#!/bin/bash

# GitHub Pages Deployment Script
# This script helps you deploy the dashboard to GitHub Pages

echo "🚀 Deploying Gutenberg Dashboard to GitHub Pages"
echo "================================================"

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo "❌ Not in a git repository. Initializing..."
    git init
    git add .
    git commit -m "Initial commit: Gutenberg Dashboard"
fi

# Add all files
echo "📁 Adding files to git..."
git add .

# Commit changes
echo "💾 Committing changes..."
git commit -m "Update Gutenberg Dashboard $(date)"

# Check if remote exists
if ! git remote get-url origin > /dev/null 2>&1; then
    echo "⚠️  No GitHub remote found."
    echo "📋 Next steps:"
    echo "1. Create a new repository on GitHub"
    echo "2. Add the remote: git remote add origin https://github.com/YOURUSERNAME/gutenberg-dashboard.git"
    echo "3. Push: git push -u origin main"
    echo "4. Enable GitHub Pages in repository settings"
    echo "5. Your dashboard will be at: https://YOURUSERNAME.github.io/gutenberg-dashboard"
    exit 1
fi

# Push to GitHub
echo "🌐 Pushing to GitHub..."
git push origin main

echo "✅ Deployment complete!"
echo ""
echo "📋 Final steps:"
echo "1. Go to your GitHub repository settings"
echo "2. Navigate to 'Pages' section"
echo "3. Select 'Deploy from a branch' → 'main' → '/ (root)'"
echo "4. Save and wait 2-3 minutes"
echo "5. Your dashboard will be live at: https://YOURUSERNAME.github.io/gutenberg-dashboard"
echo ""
echo "🎉 Share this URL with your team!"
