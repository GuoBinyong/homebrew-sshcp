# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Sshcp < Formula
  desc "通过 updir 可以上传文本或代码到ssh服务器，并且支持灵活配置，该工具启动后，无需与用户交互，会自动根据配置来把指定的文件或目录上传到ssh服务器；"
  homepage "https://github.com/GuoBinyong/sshcp"
  url "https://github.com/GuoBinyong/sshcp/archive/v1.0.0.tar.gz"
  sha256 "1aaa8fd53ce6954a9dece3244f762467df45f695a52d1534d3bf5ae86aff2ae1"

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
