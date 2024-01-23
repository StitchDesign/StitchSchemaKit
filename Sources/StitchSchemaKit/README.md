#  Version Migration Tutorial

Follow these instructions if you plan to make a change to any `SwiftData` entity in `Models/Schemas`.

## Pre-requisite Checklist
* Run the "Stitch Dev Debug" scheme to enable frequent changes on the same schema.
* Select a dev container from "iCloud" in "Signing and Capabilities" from Stitch project settings.


## Create a New Schema Version
1. From Xcode, create new folder group in `Stitch/Models/Schemas` with the new version. For example, the folder group should be named "V2" if the most recent version was "V1".
2. Our new schema version will be created by copying the current newest schema. The easiest way to do this is from the Mac's Finder. You can view these files by right clicking a file or group in Xcode > select "Show in Finder".
3. **From the Finder** go to the Schemas folder and copy files from the previous version into the new folder group. Rename files to the new version number.
4. From Xcode, right-click your new version group and select “Add files to ‘Stitch’”. Select all newly created files and add to the folder.
5. Again from Xcode, do a find + replace command to replace references of the old with new version (i.e.`_V2` -> `_V3`). **Make sure to restrict search to the folder location of the new version folder group.**
    * Also do a find + replace on the old previous version. If V3 is the new version, replace `_V1` with `_V2`.
6. Add new `StitchSchemaVersion`, incrementing the number. Fix compiler warners for missing case in switch statements.
7. Update the type aliases at the top of the SchemaVersions.swift file.
8. The last most-recent `StitchDocument` needs to have its `Transferable` implementation removed. Complete these steps from the old version:
    1. Remove the `Transferable` inheritance at the class definition inside the enum. 
    2. Remove `transferRepresentation` requirement static property.
    
### Supporting New Schema Entities
1. Update `StitchDocumentMigratable` with a new dictionary of `PersistentIdentifier` ID's using the following format:
    * Key: ID used from parent ID
    * Value: ID(s) mapping child entities to parent key
2. Update the `projectImported` migration helper function to handle updates to `StitchDocument` after SwiftData migration has finished.
3. Update **all** `StitchDocument versions to fix compiler errors from `StitchDocumentMigratable` changes.

## Tips
* Use the `DEV_DEBUG` scheme if you expect to make more edits to the schema version. This fixes migration issues caused by making changes to existing versions.
