import unittest
import moepkg/[editorstatus, logviewer, bufferstatus]

test "Exit log viewer":
  var status = initEditorStatus()
  status.addNewBuffer("Log viewer", Mode.logViewer)

  status.resize(100, 100)
  status.update

  status.exitLogViewer(100, 100)

  status.resize(100, 100)
