load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def zlib_repo():
  commit = "cacf7f1d4e3d44d871b605da3b647f07d718623f"
  http_archive(
      name = "zlib",
      urls = ["https://github.com/madler/zlib/archive/%s.tar.gz" % commit],
      strip_prefix = "zlib-" + commit,
      build_file = "@//third_party:zlib.BUILD",
  )
