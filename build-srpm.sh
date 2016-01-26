#!/bin/sh

set -x

fedpkg sources
rpmbuild --define '_sourcedir .' --define '_disable_source_fetch 0' *.spec
fedpkg srpm
