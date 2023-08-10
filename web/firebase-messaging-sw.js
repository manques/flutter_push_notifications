importScripts("https://www.gstatic.com/firebasejs/9.6.10/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/9.6.10/firebase-messaging-compat.js");

// todo Copy/paste firebaseConfig from Firebase Console
const firebaseConfig = {
 apiKey: FirebaseOptions.apiKey,
 authDomain: FirebaseOptions.authDomain,
 databaseURL: FirebaseOptions.databaseURL,
 projectId: FirebaseOptions.projectId,
 storageBucket: FirebaseOptions.storageBucket,
 messagingSenderId: FirebaseOptions.messagingSenderId,
 appId: FirebaseOptions.appId,
};

firebase.initializeApp(firebaseConfig);
const messaging = firebase.messaging();

// todo Set up background message handler