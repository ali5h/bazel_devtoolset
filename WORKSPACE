load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "com_google_protobuf",
    strip_prefix = "protobuf-3.10.0",
    sha256 = "e11f901c62f6a35e295b7e9c49123a96ef7a47503afd40ed174860ad4c3f294f",
    urls = ["https://github.com/protocolbuffers/protobuf/releases/download/v3.10.0/protobuf-all-3.10.0.tar.gz"],
)

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")

protobuf_deps()
