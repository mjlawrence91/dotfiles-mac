# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to log to the console when each text editor is saved.
#
# atom.workspace.observeTextEditors (editor) ->
#   editor.onDidSave ->
#     console.log "Saved! #{editor.getPath()}"


arrayEqual = (a, b) ->
  a.length is b.length and a.every (elem, i) -> elem is b[i]

sortPaths = (projectPaths) ->
    paths = atom.project.getPaths()
    paths.sort()
    if not arrayEqual(paths, projectPaths)
        atom.project.setPaths(paths)

sortPaths([])
atom.project.onDidChangePaths(sortPaths)
