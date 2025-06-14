#!/bin/bash

# Script per verificare lo stato del workflow GitHub Actions
# Uso: ./check-status.sh

echo "🔍 Verifica Status GitHub Actions Workflow"
echo "=========================================="

# Verifica se siamo in un repository git
if ! git rev-parse --git-dir > /dev/null 2>&1; then
    echo "❌ Non siamo in un repository Git!"
    exit 1
fi

# Ottieni URL del repository
REPO_URL=$(git config --get remote.origin.url)
echo "🔗 Repository URL: $REPO_URL"

# Estrai owner/repo dall'URL
if [[ "$REPO_URL" == *"github.com"* ]]; then
    # Rimuovi https://github.com/ o git@github.com:
    CLEAN_URL=${REPO_URL#*github.com}
    CLEAN_URL=${CLEAN_URL#:}
    CLEAN_URL=${CLEAN_URL#/}
    # Rimuovi .git alla fine
    CLEAN_URL=${CLEAN_URL%.git}
    
    # Splitta su /
    IFS='/' read -ra PARTS <<< "$CLEAN_URL"
    OWNER="${PARTS[0]}"
    REPO="${PARTS[1]}"
else
    echo "❌ Non è un repository GitHub: $REPO_URL"
    exit 1
fi

echo "📊 Repository: $OWNER/$REPO"
echo ""

# URL utili
ACTIONS_URL="https://github.com/$OWNER/$REPO/actions"
RELEASES_URL="https://github.com/$OWNER/$REPO/releases"
LATEST_RELEASE_URL="https://github.com/$OWNER/$REPO/releases/latest"

echo "🔗 Link utili:"
echo "   • GitHub Actions: $ACTIONS_URL"
echo "   • Releases: $RELEASES_URL"
echo "   • Latest Release: $LATEST_RELEASE_URL"
echo ""

# Verifica l'ultimo commit
LAST_COMMIT=$(git log -1 --pretty=format:"%h - %s (%cr)")
echo "📝 Ultimo commit: $LAST_COMMIT"
echo ""

# Badge del workflow
BADGE_URL="https://github.com/$OWNER/$REPO/workflows/Build%20and%20Release%20PDF/badge.svg"
echo "📊 Badge Status: $BADGE_URL"
echo ""

# Apri GitHub Actions (solo su macOS)
if [[ "$OSTYPE" == "darwin"* ]]; then
    read -p "🌐 Vuoi aprire GitHub Actions nel browser? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        open "$ACTIONS_URL"
    fi
fi

echo "✅ Controlla il workflow su GitHub Actions per vedere lo stato della build!"
