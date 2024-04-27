require 'open-uri'
require 'digest'

class Ctestprobe < Formula
  desc "A unit testing framework for C"
  homepage "https://github.com/ocrosby/ctestprobe"

  # Define the version number
  version "1.0.0" # Replace with the version number of your library

  # Interpolate the version number into the URL
  url "https://github.com/ocrosby/ctestprobe/archive/v#{version}.tar.gz" # Replace with the URL to your tarball

  # Fetch the tarball and compute its SHA256 sum
  tarball = open(url)
  sha256 Digest::SHA256.hexdigest(tarball.read) # Replace with the SHA256 of your tarball

  def install
    system "make"
    lib.install "libctestprobe.a"
    include.install Dir["*.h"]
  end

  test do
    # Here you can add a test for the library
    system "false"
  end
end
