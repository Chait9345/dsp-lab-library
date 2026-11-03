# DSP Lab Code Library

A searchable, responsive HTML library for ECM_3141 DSP Lab Experiments 1–7 and 10.

## What's included

- `index.html` — complete searchable code-library website with copy buttons.
- `codes/experiment-1` through `codes/experiment-6` — MATLAB programs from the supplied DSP exam guide.
- `codes/experiment-7` — CCS/C examples, plus interactive DFT and IDFT programs.
- `codes/experiment-10` — talk-through, updated echo, and updated delay programs.
- `VALIDATION.md` — what was actually compiled/tested and what requires lab hardware.

## Run locally

No build tools or dependencies are required. Open `index.html` in a browser.

For best clipboard support, run a local server from this folder:

```powershell
python -m http.server 8000
```

Then open http://localhost:8000.

## Deploy to GitHub Pages (PowerShell)

Create an empty GitHub repository first, then run these commands from this folder. Replace the URL with your repository URL:

```powershell
git init
git branch -M main
git add .
git commit -m "Add DSP lab code library"
git remote add origin https://github.com/USERNAME/REPOSITORY.git
git push -u origin main
```

If `origin` already exists, do not add it again. Use:

```powershell
git remote -v
git add .
git commit -m "Update DSP lab code library"
git push
```

### Enable the website

1. Open the repository on GitHub.
2. Go to **Settings → Pages**.
3. Under **Build and deployment**, choose **Deploy from a branch**.
4. Select branch **main** and folder **/(root)**, then Save.
5. Wait for GitHub Pages to publish. The URL will be shown in the Pages settings.

## DFT / IDFT user input

- DFT: enter `N`, then enter `N` time-domain samples separated by spaces or newlines.
- IDFT: enter `N`, then enter `N` pairs: `real imaginary` for each frequency-domain bin.
- Maximum supported transform size is 64 samples.

Example DFT input:

```text
8
1 1 2 -2 3 0 5 1
```

The DFT and IDFT programs are standard C and can be built with GCC:

```powershell
gcc .\codes\experiment-7\dft_user_input.c -o dft.exe
.\dft.exe

gcc .\codes\experiment-7\idft_user_input.c -o idft.exe
.\idft.exe
```

For GCC on systems that require explicit math linking, append `-lm`.

## Important environment notes

- MATLAB code needs MATLAB. Several examples use Signal Processing Toolbox functions (`butter`, `freqz`, `fir1`, `impz`, `impinvar`, `awgn`, `square`, `sawtooth`, etc.).
- Image-processing examples need Image Processing Toolbox functions (`imread`, `rgb2gray`, `imshow`, `imhist`, `histeq`, `imfilter`, `imnoise`, `medfilt2`, `imrotate`, `imresize`, etc.) and the sample image `peppers.png`.
- Experiment 7 C programs are intended for CCS / TMS320C6748 where appropriate. The interactive DFT/IDFT console programs were separately compiled with GCC.
- Experiment 10 audio programs need the LCDK board, AIC3106 codec, the correct TI compiler/project settings, and the matching `L138_LCDK_aic3106_init.h` support library. A normal PC compiler cannot build those files without the board library.
- `index.html` is static and can be hosted directly on GitHub Pages.
