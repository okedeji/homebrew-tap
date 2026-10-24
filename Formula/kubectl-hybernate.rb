# Written by the release workflow of https://github.com/okedeji/hybernate
# with its hack/brewformula, for each release: change that, not this.
class KubectlHybernate < Formula
  desc "Find idle Kubernetes workloads, and pause and wake them with Hybernate"
  homepage "https://github.com/okedeji/hybernate"
  version "0.2.0-rc.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/okedeji/hybernate/releases/download/v0.2.0-rc.7/kubectl-hybernate-darwin-arm64.tar.gz"
      sha256 "ad112271f96467fb1e007dc7b55b6ce098bcfedc1c3f1fdebb5aa685b1ecaed4"
    end
    on_intel do
      url "https://github.com/okedeji/hybernate/releases/download/v0.2.0-rc.7/kubectl-hybernate-darwin-amd64.tar.gz"
      sha256 "9fd2f23cb774834dd3ff3788f8336fa9d4c4ddb9b1df84ca7bcf5f8743c9a293"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/okedeji/hybernate/releases/download/v0.2.0-rc.7/kubectl-hybernate-linux-arm64.tar.gz"
      sha256 "4c3e6aa24695f2be3b90c7740a4acfc3b26b1bffc5327984b531789851941292"
    end
    on_intel do
      url "https://github.com/okedeji/hybernate/releases/download/v0.2.0-rc.7/kubectl-hybernate-linux-amd64.tar.gz"
      sha256 "0a17abc9f5359f9cad30a9308010250f1a280b2922a14f76d08bbf17b6572faa"
    end
  end

  def install
    bin.install Dir["kubectl-hybernate-*"].first => "kubectl-hybernate"
  end

  test do
    assert_match "kubectl-hybernate v#{version}", shell_output("#{bin}/kubectl-hybernate version")
  end
end
