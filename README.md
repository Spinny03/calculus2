# 📚 Guida Strategica per l'Esame di Calcolo 2

![Build Status](https://github.com/Spinny03/calculus2/workflows/Build%20and%20Release%20PDF/badge.svg)
![Latest Release](https://img.shields.io/github/v/release/Spinny03/calculus2?label=Latest%20PDF)
![GitHub repo size](https://img.shields.io/github/repo-size/Spinny03/calculus2)

Una guida completa e strategica per superare l'esame di Calcolo 2, con tecniche avanzate, esempi pratici e formulario essenziale.

## 🎯 Contenuti

- **Esercizio 1**: Serie Numeriche e di Potenze
- **Esercizio 2**: Polinomi di Taylor/MacLaurin e Serie di Fourier
- **Esercizi 3-4**: Funzioni di Due Variabili - Ottimizzazione libera e vincolata
- **Formulario**: Sviluppi notevoli, equivalenze asintotiche e formule essenziali

## 🚀 Rilasci Automatici

Il PDF viene generato automaticamente ad ogni commit su `main` con il seguente schema di versioning:

```
YYYY.MM.DD.N
```

Dove:

- `YYYY.MM.DD` = Data del commit (anno.mese.giorno)
- `N` = Numero incrementale della versione (inizia da 1 ogni giorno)

### Esempi:

- `2025.06.14.1` - Prima versione del 14 giugno 2025
- `2025.06.14.2` - Seconda versione dello stesso giorno
- `2025.06.15.1` - Prima versione del 15 giugno 2025

## 📥 Download

### Ultima Versione

Scarica sempre l'ultima versione dalla sezione [Releases](../../releases/latest).

### Versioni Precedenti

Tutte le versioni precedenti sono disponibili nella [lista completa dei rilasci](../../releases).

## 🛠️ Compilazione Locale

Per compilare il documento localmente:

```bash
# Clona il repository
git clone <repository-url>
cd calculus2

# Compila con pdflatex (2 passaggi per TOC)
pdflatex -synctex=1 -interaction=nonstopmode main.tex
pdflatex -synctex=1 -interaction=nonstopmode main.tex
```

### Requisiti

- TeX Live o MiKTeX
- Pacchetti LaTeX: `amsmath`, `amssymb`, `tcolorbox`, `hyperref`, etc.

## 📝 Struttura del Progetto

```
calculus2/
├── main.tex                    # Documento principale
├── es1_serie.tex              # Serie numeriche e di potenze
├── es2_taylor_fourier.tex     # Taylor/MacLaurin e Fourier
├── es3_4_funzioni2var.tex     # Funzioni di due variabili
├── formulario.tex             # Formulario e sviluppi notevoli
├── esami.tex                  # Raccolta esami precedenti
├── esercitazioni.tex          # Esercitazioni guidate
└── .github/workflows/         # GitHub Actions per rilasci automatici
```

## 🎨 Caratteristiche

- **Box colorati** per strategie, errori comuni ed esempi
- **Flowchart mentali** per approccio sistematico ai problemi
- **Esempi pratici** tratti da esami reali
- **Formule essenziali** evidenziate e facilmente consultabili
- **Indice navigabile** con collegamenti ipertestuali

## 🔄 Workflow di Sviluppo

1. **Modifica** i file `.tex` necessari
2. **Commit** le modifiche su `main`
3. **GitHub Actions** compila automaticamente il PDF
4. **Release** viene creata automaticamente con versioning incrementale
5. **Download** del PDF dalla sezione Releases

## 📊 Status Build

![Build Status](../../workflows/Build%20and%20Release%20PDF/badge.svg)

## 🤝 Contributi

Le proposte di miglioramento sono benvenute! Per contribuire:

1. Fai fork del repository
2. Crea un branch per le tue modifiche
3. Fai le modifiche nei file `.tex`
4. Testa la compilazione localmente
5. Apri una Pull Request

## 📄 Licenza

Questo progetto è rilasciato sotto licenza [MIT](LICENSE).

## 🛠️ Comandi Utili

### Compilazione e Build

```bash

# Compilazione manuale (2 passaggi per TOC)
pdflatex -synctex=1 -interaction=nonstopmode main.tex
pdflatex -synctex=1 -interaction=nonstopmode main.tex
```

### Gestione Versioni

```bash
# Nuovo rilascio automatico
git add .
git commit -m "✨ Descrizione modifiche"
git push origin main
# → Rilascio automatico con versioning YYYY.MM.DD.N

# Visualizza tag delle versioni
git tag -l | sort -V

# Verifica ultimo commit
git log -1 --oneline
```

### Link Rapidi

- 🔗 [GitHub Actions](https://github.com/Spinny03/calculus2/actions)
- 📦 [Releases](https://github.com/Spinny03/calculus2/releases)
- 📄 [Latest PDF](https://github.com/Spinny03/calculus2/releases/latest)

## 👨‍🎓 Autore

**Filippo Spinella**  
_Versione ampliata con strategie avanzate e formulario completo_

---

_Ultima versione generata automaticamente con GitHub Actions 🚀_
