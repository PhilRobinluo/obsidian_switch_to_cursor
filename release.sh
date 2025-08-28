#!/bin/bash

# Obsidian to Cursor Bridge - Release Script
# Usage: ./release.sh [version]

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Get version from parameter or prompt
if [ -z "$1" ]; then
    echo -e "${YELLOW}Enter version (e.g., 1.0.0):${NC}"
    read VERSION
else
    VERSION=$1
fi

# Validate version format
if ! [[ $VERSION =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    echo -e "${RED}❌ Invalid version format. Use semantic versioning (e.g., 1.0.0)${NC}"
    exit 1
fi

echo -e "${BLUE}🚀 Starting release process for version $VERSION${NC}"

# Check if we're on main branch
CURRENT_BRANCH=$(git branch --show-current)
if [ "$CURRENT_BRANCH" != "main" ]; then
    echo -e "${YELLOW}⚠️  Warning: You're not on the main branch (current: $CURRENT_BRANCH)${NC}"
    echo -e "${YELLOW}Do you want to continue? (y/N)${NC}"
    read -r CONTINUE
    if [[ ! $CONTINUE =~ ^[Yy]$ ]]; then
        echo -e "${RED}❌ Release cancelled${NC}"
        exit 1
    fi
fi

# Check for uncommitted changes
if ! git diff --quiet HEAD; then
    echo -e "${RED}❌ You have uncommitted changes. Please commit or stash them first.${NC}"
    exit 1
fi

# Update version in files
echo -e "${BLUE}📝 Updating version in manifest.json...${NC}"
sed -i.bak "s/\"version\": \".*\"/\"version\": \"$VERSION\"/" manifest.json && rm manifest.json.bak

echo -e "${BLUE}📝 Updating version in package.json...${NC}"
npm version $VERSION --no-git-tag-version

# Build the plugin
echo -e "${BLUE}🔨 Building plugin...${NC}"
npm run build

# Check if build was successful
if [ ! -f "main.js" ]; then
    echo -e "${RED}❌ Build failed - main.js not found${NC}"
    exit 1
fi

# Run tests/checks
echo -e "${BLUE}🧪 Running type check...${NC}"
npx tsc --noEmit --skipLibCheck

# Create release directory
RELEASE_DIR="release-$VERSION"
echo -e "${BLUE}📦 Creating release package in $RELEASE_DIR...${NC}"
mkdir -p "$RELEASE_DIR"
cp main.js manifest.json styles.css "$RELEASE_DIR/"

# Create zip file
cd "$RELEASE_DIR"
zip -r "../obsidian-switch-to-cursor-$VERSION.zip" .
cd ..

echo -e "${GREEN}✅ Release package created: obsidian-switch-to-cursor-$VERSION.zip${NC}"

# Commit version changes
echo -e "${BLUE}📝 Committing version changes...${NC}"
git add package.json manifest.json
git commit -m "chore: bump version to $VERSION"

# Create and push tag
echo -e "${BLUE}🏷️  Creating git tag v$VERSION...${NC}"
git tag "v$VERSION"

echo -e "${YELLOW}Ready to push changes and tag? This will trigger the GitHub release workflow.${NC}"
echo -e "${YELLOW}Commands to run:${NC}"
echo -e "  ${BLUE}git push origin main${NC}"
echo -e "  ${BLUE}git push origin v$VERSION${NC}"
echo ""
echo -e "${YELLOW}Push now? (y/N)${NC}"
read -r PUSH_NOW

if [[ $PUSH_NOW =~ ^[Yy]$ ]]; then
    echo -e "${BLUE}🚀 Pushing to GitHub...${NC}"
    git push origin main
    git push origin "v$VERSION"
    
    echo -e "${GREEN}🎉 Release $VERSION has been pushed to GitHub!${NC}"
    echo -e "${GREEN}✅ GitHub Actions will automatically create the release.${NC}"
    echo ""
    echo -e "${BLUE}📋 Next steps:${NC}"
    echo -e "1. Check GitHub Actions for build status"
    echo -e "2. Verify release assets are uploaded correctly"
    echo -e "3. Update release notes if needed"
    echo -e "4. Consider submitting to Obsidian Community Plugins"
    echo ""
    echo -e "${BLUE}🌐 View release: https://github.com/PhilRobinluo/obsidian_switch_to_cursor/releases/tag/v$VERSION${NC}"
else
    echo -e "${YELLOW}⏸️  Release prepared but not pushed. Run the following when ready:${NC}"
    echo -e "  ${BLUE}git push origin main${NC}"
    echo -e "  ${BLUE}git push origin v$VERSION${NC}"
fi

# Cleanup
echo -e "${BLUE}🧹 Cleaning up temporary files...${NC}"
rm -rf "$RELEASE_DIR"

echo -e "${GREEN}🎉 Release process completed!${NC}"
