# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Simplestack < Formula
  desc "A command-line tool to generate an application following the SimpleStack pattern"
  homepage "https://github.com/johnreitano/simplestack"
  url "https://github.com/johnreitano/simplestack/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "1d033d29f5eace505a67bd1757ae73a7b2a63df16321c3c653ca30c65b2410fc"
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
