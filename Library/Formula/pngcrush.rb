require 'formula'

class Pngcrush <Formula
  homepage 'http://pmt.sourceforge.net/pngcrush/'
  url 'http://downloads.sourceforge.net/project/pmt/pngcrush/00-1.7.12/pngcrush-1.7.12.tar.bz2'
  md5 '16d2eab491a13c1bc32d763e3d21e85b'

  def install
    # use our CFLAGS, LDFLAGS, CC, and LD
    inreplace 'Makefile' do |s|
      s.remove_make_var! %w[CFLAGS LDFLAGS CC LD]
    end

    system "make"
    bin.install 'pngcrush'
  end
end
