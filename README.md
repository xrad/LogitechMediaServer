# LogitechMediaServer
A current Logitech Media Server for ARM7 based Synology DiskStations.

Up to DSM6 I used a Debian chroot environment packaged as SPK to run the stock Linux debian LogitechMediaServer.
With DSM7 this is no longer an option since SPK cannot use root anymore, so I went for a more compliant option
with a supporting Perl package and LogitechMediaServer.

# Requirements

* Linux x86 machine for compilation
* [Synology Cross Development](https://github.com/SynologyOpenSource/pkgscripts-ng)
* An ARM7 based DiskStation running DSM7

# Prepare

Unpack and organize repos like so:
```
somewhere/
├── pkgscripts-ng/
└── source/
    └── LogitechMediaServer
```

You need to prepare the cross development environment:

```
cd somewhere/pkgscripts-ng/
git checout -b DSM7.0 origin/DSM7.0
sudo ./EnvDeploy -v 7.0 -p armada375
```

You also need this little patch to stop the build script from reporting a bogus build error:
```
```

Download sources:
```
cd somewhere/source/LogitechMediaServer
./download.sh
```

# Build

```
cd somewhere/pkgscripts-ng/
sudo ./PkgCreate.py -p aramada375 LogitechMediaServer
```
