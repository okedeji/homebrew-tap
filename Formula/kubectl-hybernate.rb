# Written by the release workflow of https://github.com/okedeji/hybernate
# with its hack/brewformula, for each release: change that, not this.
class KubectlHybernate < Formula
  desc "Find idle Kubernetes workloads, and pause and wake them with Hybernate"
  homepage "https://github.com/okedeji/hybernate"
  version "0.2.0-rc.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/okedeji/hybernate/releases/download/v0.2.0-rc.5/kubectl-hybernate-darwin-arm64.tar.gz"
      sha256 "d7b1d2e8853c3add22f3ca773c3a1f48563639368fa916a32a718bbd9d7c3dd3"
    end
    on_intel do
      url "https://github.com/okedeji/hybernate/releases/download/v0.2.0-rc.5/kubectl-hybernate-darwin-amd64.tar.gz"
      sha256 "c947591c025c26311993bb1b25e7352356c0867660e54cbc939e8fbfdc6a0dfb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/okedeji/hybernate/releases/download/v0.2.0-rc.5/kubectl-hybernate-linux-arm64.tar.gz"
      sha256 "751b8abee75d439296d8af0a1eb72ebe72b6ffe6647853c0052cbb8bd558f9ea"
    end
    on_intel do
      url "https://github.com/okedeji/hybernate/releases/download/v0.2.0-rc.5/kubectl-hybernate-linux-amd64.tar.gz"
      sha256 "e64ff5dbd4918894e326c88078104f6eb58c3baea2feeb5adb147930204598de"
    end
  end

  def install
    bin.install Dir["kubectl-hybernate-*"].first => "kubectl-hybernate"
  end

  test do
    assert_match "kubectl-hybernate v#{version}", shell_output("#{bin}/kubectl-hybernate version")
  end
end
