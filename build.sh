#!/bin/bash

# Script per compilare la Guida Strategica Calcolo 2
# Uso: ./build.sh

set -e  # Esci se qualsiasi comando fallisce

echo "🔧 Compilazione Guida Strategica Calcolo 2..."
echo "================================================"

# Pulizia file ausiliari
echo "🧹 Pulizia file temporanei..."
rm -f *.aux *.log *.out *.synctex.gz *.toc *.bbl *.bcf *.blg *.run.xml

# Prima compilazione
echo "📄 Prima compilazione..."
pdflatex -synctex=1 -interaction=nonstopmode -file-line-error main.tex

# Seconda compilazione per TOC e riferimenti
echo "📄 Seconda compilazione (TOC e riferimenti)..."
pdflatex -synctex=1 -interaction=nonstopmode -file-line-error main.tex

# Verifica successo
if [ -f main.pdf ]; then
    echo "✅ Compilazione completata con successo!"
    echo "📁 Output: main.pdf"
    
    # Mostra info sul file generato
    echo ""
    echo "📊 Informazioni file:"
    ls -lh main.pdf
    
    # Apri il PDF (solo su macOS)
    if [[ "$OSTYPE" == "darwin"* ]]; then
        echo ""
        read -p "🔍 Vuoi aprire il PDF? (y/n): " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            open main.pdf
        fi
    fi
else
    echo "❌ Errore: main.pdf non è stato generato!"
    echo "🔍 Controlla i messaggi di errore sopra."
    exit 1
fi

echo ""
echo "🎉 Build completato!"
