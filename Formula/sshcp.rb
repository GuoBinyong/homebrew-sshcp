# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Sshcp < Formula
  desc "sshcp 命令使您可以通过一个简短的命令就把本地指定目录或文件 上传到 服务器的指定的目标目录中，或者 自动登录服务器，并转到指定的目标目录中。"
  homepage "https://github.com/GuoBinyong/sshcp"
  url "https://github.com/GuoBinyong/sshcp/archive/v1.1.0.tar.gz"
  sha256 "30707eb96334fb9ee84572c62cdbcd62617f5834d7ea766224e3d81debfd96b6"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # system "./configure", "--disable-debug",
    #                       "--disable-dependency-tracking",
    #                       "--disable-silent-rules",
    #                       "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    bin.install "sshcp"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test sshcp`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
