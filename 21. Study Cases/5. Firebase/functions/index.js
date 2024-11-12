const functions = require("firebase-functions");
const admin = require("firebase-admin");

admin.initializeApp();

exports.onUserCreate = functions.firestore.onDocumentCreated(
  "users/{userId}",
  async (event) => {
    const userId = event.params.userId;

    const settingsRef = admin.firestore().collection("settings").doc(userId);
    await settingsRef.set({
      theme: "light",
      notificationsEnabled: true,
    });
    console.log("Default settings initialized for user:", userId);

    const logRef = admin.firestore().collection("logs").doc(userId);
    await logRef.set({
      userId: userId,
      action: "User Created",
    });
    console.log("User Creation event logged");
  },
);
