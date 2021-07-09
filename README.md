## ytt File Order Processing

A crafted example for exploring how `ytt` determines the order in which to process files.

### Using...

1. Download or clone this repo
2. Install `ytt` 
   ```bash
   $ brew install vmware-tanzu/carvel/ytt
   ```
3. Study the directory structure
    ```bash
    $ tree fruit/
    ```
4. Run one of the supplied scripts:
   ```bash
   $ ./default_ordering.sh
   ```
5. Compare the output you see to the order rules described below.

### `ytt` File Processing Ordering Rules

`ytt` processes files in order in this way:
1. **by type** — entire sets based on type: schema files first, then data values overlays, then templates, then finally overlays. (illustrated in the “How it Works” page)
2. **by CLI argument order** — files are first grouped by the order in which they came from a -f flag (files from left-most -f are processed first).
3. **alphabetically** — within each of those groups, files are processed in order by their entire file path, lexicographically. (i.e. files are grouped into directories naturally because they sort together).
