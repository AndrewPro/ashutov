#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Commit changes in the root repository (main branch)
echo "1. Committing changes in the root repository..."
git add .
git commit -m "Update main branch" || echo "No changes to commit in main branch."
git push origin main

# Build the static site into the 'public' folder
echo "2. Building the static site..."
hugo 

# Navigate to the 'public' directory
cd public


# Add and commit changes in the 'public' repository (gh-pages branch)
echo "3. Committing changes in the 'gh-pages' branch..."
git add .
git commit -m "Update GitHub Pages" || echo "No changes to commit in gh-pages branch."

# Push the changes to the 'gh-pages' branch
echo "Pushing changes to the 'gh-pages' branch..."
git push origin gh-pages --force

# Return to the root directory
cd ..

echo "Deployment complete!"
