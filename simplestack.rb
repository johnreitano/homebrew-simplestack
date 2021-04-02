# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Simplestack < Formula
  desc "A command-line tool to generate an application following the SimpleStack pattern"
  homepage "https://github.com/johnreitano/simplestack"
  url "https://github.com/johnreitano/simplestack/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "dca96e038f2e75d707633be2486a739b72e6e7b3cb586e692e9c996e37040754"
  license ""
  depends_on "gh"
  depends_on "heroku"
  depends_on "coreutils"

  # depends_on "cmake" => :build

  def install
    # # ENV.deparallelize  # if your formula fails when building in parallel
    # # Remove unrecognized options if warned by configure
    # # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # # system "cmake", ".", *std_cmake_args
    prefix.install  Dir["*"] - ["bundle", "sample*", "notes.md", "tmp"]
  end

  # test do
  #   # `test do` will create, run in and delete a temporary directory.
  #   #
  #   # This test will fail and we won't accept that! For Homebrew/homebrew-core
  #   # this will need to be a test that verifies the functionality of the
  #   # software. Run the test with `brew test simplestack`. Options passed
  #   # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
  #   #
  #   # The installed folder is not in the path, so use the entire path to any
  #   # executables being tested: `system "#{bin}/program", "do", "something"`.
  #   system "false"
  # end
end
