# buildifier: disable=module-docstring
# buildifier: disable=name-conventions
ToolchainMapping = provider(
    doc = "Mapping of toolchain definition files to platform constraints",
    fields = {
        "exec_compatible_with": "Compatible execution platform constraints",
        "file": "Toolchain definition file",
        "target_compatible_with": "Compatible target platform constraints",
    },
)

TOOLCHAIN_MAPPINGS = [
    ToolchainMapping(
        exec_compatible_with = [
            "@platforms//os:linux",
        ],
        file = "@rules_foreign_cc//foreign_cc/private/shell_toolchain/toolchains/impl:linux_commands.bzl",
    ),
    ToolchainMapping(
        exec_compatible_with = [
            "@platforms//os:windows",
        ],
        file = "@rules_foreign_cc//foreign_cc/private/shell_toolchain/toolchains/impl:windows_commands.bzl",
    ),
    ToolchainMapping(
        exec_compatible_with = [
            "@platforms//os:macos",
        ],
        file = "@rules_foreign_cc//foreign_cc/private/shell_toolchain/toolchains/impl:macos_commands.bzl",
    ),
    ToolchainMapping(
        file = "@rules_foreign_cc//foreign_cc/private/shell_toolchain/toolchains/impl:default_commands.bzl",
    ),
]
