/// Constants to use Firestore for HOP.
///
/// [Reference](https://github.com/hop-team/hop-firestore-schema)

class VersionConstants {
  static const String versionOne = 'v1';
}

class FirestoreDocumentRoots {
  static const String users = 'users/${VersionConstants.versionOne}';
}
