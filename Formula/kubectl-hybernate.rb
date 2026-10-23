# Written by the release workflow of https://github.com/okedeji/hybernate
# with its hack/brewformula, for each release: change that, not this.
class KubectlHybernate < Formula
  desc "Find idle Kubernetes workloads, and pause and wake them with Hybernate"
  homepage "https://github.com/okedeji/hybernate"
  version "0.2.0-rc.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/okedeji/hybernate/releases/download/v0.2.0-rc.6/kubectl-hybernate-darwin-arm64.tar.gz"
      sha256 "47312bb530336dd61487819a9a7b8a1d2ffe140c54935cf43c33be78e3738f25"
    end
    on_intel do
      url "https://github.com/okedeji/hybernate/releases/download/v0.2.0-rc.6/kubectl-hybernate-darwin-amd64.tar.gz"
      sha256 "7ca218b4d62c0e78f7e9dd2f71ea464733948bd32f64e6b823af0193509ca327"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/okedeji/hybernate/releases/download/v0.2.0-rc.6/kubectl-hybernate-linux-arm64.tar.gz"
      sha256 "aaa5e47e976d030ca19ce98c63ac16d0aec925c660946a0fda9ad01c613c7984"
    end
    on_intel do
      url "https://github.com/okedeji/hybernate/releases/download/v0.2.0-rc.6/kubectl-hybernate-linux-amd64.tar.gz"
      sha256 "d2bcc9ff3b19722ac48ee854ed6262bbf53a957da8d3cb11c1a317beb694e497"
    end
  end

  def install
    bin.install Dir["kubectl-hybernate-*"].first => "kubectl-hybernate"
  end

  test do
    assert_match "kubectl-hybernate v#{version}", shell_output("#{bin}/kubectl-hybernate version")
  end
end
