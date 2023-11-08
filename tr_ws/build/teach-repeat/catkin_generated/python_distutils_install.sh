#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/gralerfics/MyFiles/Workspace/tr_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/gralerfics/MyFiles/Workspace/tr_ws/install/lib/python3/dist-packages:/home/gralerfics/MyFiles/Workspace/tr_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/gralerfics/MyFiles/Workspace/tr_ws/build" \
    "/usr/bin/python3" \
    "/home/gralerfics/MyFiles/Workspace/tr_ws/src/teach-repeat/setup.py" \
     \
    build --build-base "/home/gralerfics/MyFiles/Workspace/tr_ws/build/teach-repeat" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/gralerfics/MyFiles/Workspace/tr_ws/install" --install-scripts="/home/gralerfics/MyFiles/Workspace/tr_ws/install/bin"
