# Scripts

Collection of scripts for personal use, organized by language.

> [!important]
> Unless otherwise noted, instructions are written for MacOS and assume use of the Zsh shell

## Shell

### [hit-api 🏓](https://github.com/hey-august/scripts/tree/main/shell)

A barebones, self-contained tool for making simple REST calls to the SignalWire API over HTTP.

#### Usage

1. Add keys: Authentication is handled by environment variables set by the script. Replace the placeholders with your own credentials.
1. Make the script executable with `chmod +x hit-api.sh`
1. Run the script with `./hit-api.sh`

---

## Python

### [Slug Collector 🐌](https://github.com/hey-august/scripts/tree/main/python/slug-collector)

Slug Collector is a simple Python script that traverses a directory for Markdown (`.md`) and Markdown React (`.mdx`) files,
collects the slug defined in the YAML front matter (if any), and outputs the resulting list in a text file.

#### Usage

1. Create a virtual environment
2. Install `PyYAML` with UV or your package manager of choice
3. Navigate to the directory of Markdown or Markdown React files in Terminal
4. Activate the virtual environment
```
source ~/path/to/.venv/bin/activate`
```
6. With your shell inside the desired directory, run the script
```
python3 ~/path/to/python/script/collect_slugs.py .
```
8. Collect your new list of slugs from `slugs_output.txt`
