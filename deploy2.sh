#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Define color codes
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color


# Commit changes in the root repository (main branch)
echo -e "${YELLOW}1. Committing changes in the root repository...${NC}"
git add .
git commit -m "Update main branch" || echo -e "${RED}No changes to commit in main branch.${NC}"
git push origin main

# Build the static site into the 'public' folder
echo -e "${GREEN}Building the static site...${NC}"
hugo 

# Navigate to the 'public' directory
cd public


# Add and commit changes in the 'public' repository (gh-pages branch)
echo -e "${YELLOW}Committing changes in the 'gh-pages' branch...${NC}"
git add .
git commit -m "Update GitHub Pages" || echo "No changes to commit in gh-pages branch."

# Push the changes to the 'gh-pages' branch
echo -e "${GREEN}Pushing changes to the 'gh-pages' branch...${NC}"
git push origin gh-pages --force

# Return to the root directory
cd ..

echo -e "${BLUE}Deployment complete!${NC}"
