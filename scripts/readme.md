# Generate your own llf files

**Works only on Linux**

Make sure to have `node.js` installed, get it from this page: https://nodejs.org/en

Run `sh scripts/install-tools.sh` when you are first trying to create your own files.

Download [pkware-test-files](https://github.com/arx-tools/pkware-test-files) as a zip
and extract its contents into any folder.

Open `scripts/config.sh` and adjust the `COMPLETE_DARKNESS_PKWARE_TEST_FILES` variable
to point to the folder you created in the previous step. Also make a folder for the output
and make `COMPLETE_DARKNESS_OUTPUT_DIR` point to it.

Then run the following commands in the console:

1. `source scripts/config.sh && bash scripts/to-json.sh`
2. `source scripts/config.sh && node scripts/remove-lights.js`
3. `source scripts/config.sh && bash scripts/from-json.sh`
