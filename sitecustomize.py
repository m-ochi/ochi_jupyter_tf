
import sys
sys.setdefaultencoding("utf-8")



# install the apport exception handler if available
try:
    import apport_python_hook
except ImportError:
    pass
else:
    apport_python_hook.install()
