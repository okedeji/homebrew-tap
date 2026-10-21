# Written by the release workflow of https://github.com/okedeji/hybernate
# with its hack/brewformula, for each release: change that, not this.
class KubectlHybernate < Formula
  desc "Find idle Kubernetes workloads, and pause and wake them with Hybernate"
  homepage "https://github.com/okedeji/hybernate"
  version "0.2.0-rc.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/okedeji/hybernate/releases/download/v0.2.0-rc.4/kubectl-hybernate-darwin-arm64.tar.gz"
      sha256 "f597abd414356073c506c08ceacf2fc1759f09149397d032c96c835fad5fbb3f"
    end
    on_intel do
      url "https://github.com/okedeji/hybernate/releases/download/v0.2.0-rc.4/kubectl-hybernate-darwin-amd64.tar.gz"
      sha256 "dd8ea3b875c2e1d2819b817802460207689d636597bc6fd57e59f068996132b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/okedeji/hybernate/releases/download/v0.2.0-rc.4/kubectl-hybernate-linux-arm64.tar.gz"
      sha256 "989b8905a2503641bc911fda41f9ea5b189e22dacdba6906e8684a2a83add2a7"
    end
    on_intel do
      url "https://github.com/okedeji/hybernate/releases/download/v0.2.0-rc.4/kubectl-hybernate-linux-amd64.tar.gz"
      sha256 "586cbf846a64537b315a0cc10db0b350f001f1350abb06b8382fd432301c3a0f"
    end
  end

  def install
    bin.install Dir["kubectl-hybernate-*"].first => "kubectl-hybernate"
  end

  test do
    assert_match "kubectl-hybernate v#{version}", shell_output("#{bin}/kubectl-hybernate version")
  end
end
