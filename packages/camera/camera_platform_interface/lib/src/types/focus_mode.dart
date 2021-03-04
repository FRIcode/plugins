// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// The possible focus modes that can be set for a camera.
enum FocusMode {
  /// Automatically determine focus settings.
  auto,

  /// Automatically determine focus settings, but do not lock focus before capture (on certain devices that causes
  /// AF to stop working - eg. Samsung Galaxy S10).
  autoNoLock,

  /// Lock the currently determined focus settings.
  locked,
}

/// Returns the focus mode as a String.
String serializeFocusMode(FocusMode focusMode) {
  switch (focusMode) {
    case FocusMode.locked:
      return 'locked';
    case FocusMode.autoNoLock:
      return 'autoNoLock';
    case FocusMode.auto:
      return 'auto';
    default:
      throw ArgumentError('Unknown FocusMode value');
  }
}

/// Returns the focus mode for a given String.
FocusMode deserializeFocusMode(String str) {
  switch (str) {
    case "locked":
      return FocusMode.locked;
    case "autoNoLock":
      return FocusMode.autoNoLock;
    case "auto":
      return FocusMode.auto;
    default:
      throw ArgumentError('"$str" is not a valid FocusMode value');
  }
}
