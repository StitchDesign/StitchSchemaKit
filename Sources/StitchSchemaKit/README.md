#  Version Migration Tutorial

Follow these instructions if you plan to make a change to any `SwiftData` entity in `Models/Schemas`.

## Prerequisite Checklist
* Select a dev container from "iCloud" in "Signing and Capabilities" from Stitch project settings if you don't want the possibility of losing your current projects when you test changes.


## Create a New Schema Version
1. From Xcode, create new folder group in `Sources/StitchSchemaKit` with the new version. For example, the folder group should be named "V2" if the most recent version was "V1".
2. In your terminal, go to the package root (`StitchSchemaKit/`) and invoke the shell script as such:
```sh
# (Only on first ever invocation) enable permissions of this script
chmod +x versioning.sh

# i.e. if the next version is 3: "./versioning.sh 3"
./versioning.sh <new-version-number>
```
3. From Xcode, do a find + replace command to replace references of the old with new version (i.e.`_V2` -> `_V3`). **Make sure to restrict search to the folder location of the new version folder group.**
    * Also do a find + replace on the old previous version. If V3 is the new version, replace `_V1` with `_V2`.
4. Add new `StitchSchemaVersion`, incrementing the number. Fix compiler warners for missing case in switch statements.
5. Update the type aliases at the top of the SchemaVersions.swift file.
    
### Supporting New Schema Entities
1. Update `StitchDocumentMigratable` with a new dictionary of `PersistentIdentifier` ID's using the following format:
    * Key: ID used from parent ID
    * Value: ID(s) mapping child entities to parent key
2. Update the `projectImported` migration helper function to handle updates to `StitchDocument` after SwiftData migration has finished.
3. Update **all** `StitchDocument versions to fix compiler errors from `StitchDocumentMigratable` changes.

## Tips
* **Please mark custom migration code with `// TODO: ...` comment code.** It makes identifying custom migration code easier for subsequent versions.
* In the Stitch codebase, use the `DEV_DEBUG` scheme if you expect to make more edits to the schema version. This fixes migration issues caused by making changes to existing versions.
