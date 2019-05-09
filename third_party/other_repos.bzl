load("//third_party:repos.bzl", "zlib_repo")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def other_repos():
  zlib_repo()

def protobuf_repo():
    commit = "bc929a3e82b7a131f9760af96f1baec5b2e4bc9b"
    http_archive(
        name = "com_google_protobuf",
        urls = ["https://github.com/protocolbuffers/protobuf/archive/%s.tar.gz" % commit],
        strip_prefix = "protobuf-" + commit,
    )

def bazel_skylib_repo():
    commit = "be3b1fc838386bdbea39d9750ea4411294870575"
    http_archive(
        name = "bazel_skylib",
        urls = ["https://github.com/bazelbuild/bazel-skylib/archive/%s.tar.gz" % commit],
        strip_prefix = "bazel-skylib-" + commit,
    )

def rules_go_repo():
    commit = "3c34e66b0507056e83bcbd9c963ab9d7e6cb049f"
    http_archive(
        name = "io_bazel_rules_go",
        urls = ["https://github.com/bazelbuild/rules_go/archive/%s.tar.gz" % commit],
        strip_prefix = "rules_go-" + commit,
        # Work around Bazel query rdeps bug
        # https://github.com/bazelbuild/rules_go/issues/2043
        patch_cmds = ["echo \"exports_files(glob(['*.patch']))\" >> third_party/BUILD.bazel"],
    )


def bazel_gazelle_repo():
    commit = "99f7bcae18d0c84524eca529384723979ce473bc"
    http_archive(
        name = "bazel_gazelle",
        urls = ["https://github.com/bazelbuild/bazel-gazelle/archive/%s.tar.gz" % commit],
        strip_prefix = "bazel-gazelle-" + commit,
    )

