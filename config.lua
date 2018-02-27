gc = gc or {}

gc.enableHotPatch = false

gc.heartbeatDuration = 60

gc.serverPath = "http://api.server.com"
gc.serverResPath = "http://res.server.com"
gc.url = {
	--resource
	version = gc.serverResPath.."/script/version.txt",
	luatar = gc.serverResPath.."/script/lua.tar.gz",
	debtar = gc.serverResPath.."/plugin/deb.tar.gz",

	--api
	registerMachine = gc.serverPath.."/machine/machineInfo",
	heartbeat = gc.serverPath.."/task/taskHeartbeat",
}


gc.userPath = userPath()
gc.tsResPath = gc.userPath.."/res/"
mkdir(gc.tsResPath)
gc.tsLuaPath = gc.userPath.."/lua/"
mkdir(gc.tsLuaPath)
gc.tsLogPath = gc.userPath.."/log/"
mkdir(gc.tsLogPath)
gc.tsTweakPath = gc.userPath.."/tweak/"
mkdir(gc.tsTweakPath)
gc.snapshotPath = gc.tsResPath.."snapshot/"
mkdir(gc.snapshotPath)

gc.httpCode = {
	ok = 200,
	err = 500
}