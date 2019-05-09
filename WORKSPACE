workspace(name = "bazel_dummy_target")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

commit = "cacf7f1d4e3d44d871b605da3b647f07d718623f"
http_archive(
    name = "zlib",
    urls = ["https://github.com/madler/zlib/archive/%s.tar.gz" % commit],
    strip_prefix = "zlib-" + commit,
    build_file = "@//third_party:zlib.BUILD",
)


load("//third_party:other_repos.bzl", "protobuf_repo", "bazel_skylib_repo", "rules_go_repo",
"bazel_gazelle_repo")
protobuf_repo()
bazel_skylib_repo()
rules_go_repo()
load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
go_rules_dependencies()
go_register_toolchains()

bazel_gazelle_repo()

load("//third_party:go_repos.bzl", "go_repos")
go_repos()
