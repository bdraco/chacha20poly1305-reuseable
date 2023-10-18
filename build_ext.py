"""Build optional cython modules."""

import os
from distutils.command.build_ext import build_ext


class BuildExt(build_ext):
    def build_extensions(self):  # type: ignore
        try:
            super().build_extensions()
        except Exception:  # nosec
            pass


def build(setup_kwargs):  # type: ignore
    if os.environ.get("SKIP_CYTHON", False):
        return
    try:
        from Cython.Build import cythonize

        setup_kwargs.update(
            dict(
                ext_modules=cythonize(
                    [
                        "src/chacha20poly1305_reuseable/__init__.py",
                    ],
                    compiler_directives={"language_level": "3"},  # Python 3
                ),
                cmdclass=dict(build_ext=BuildExt),
            )
        )
        setup_kwargs["exclude_package_data"] = {
            pkg: ["*.c"] for pkg in setup_kwargs["packages"]
        }
    except Exception:
        if os.environ.get("REQUIRE_CYTHON"):
            raise
        pass
