class DockerRollout < Formula
  desc "Docker CLI plugin providing zero downtime deployment for Docker Compose"
  homepage "https://github.com/wowu/docker-rollout"
  url "https://github.com/wowu/docker-rollout/archive/refs/tags/v0.10.tar.gz"
  sha256 "8cf011b18d492d4ebd3b67efd0eb3f0f96fdc8d91bd007df37c7046ded23b82e"
  license "MIT"

  head "https://github.com/wowu/docker-rollout.git", branch: "main"

  def install
    bin.install "docker-rollout"
    (lib/"docker/cli-plugins").install_symlink bin/"docker-rollout"
  end

  def caveats
    <<~EOS
      docker-rollout is a Docker plugin. For Docker to find the plugin, add "cliPluginsExtraDirs" to ~/.docker/config.json:
        "cliPluginsExtraDirs": [
            "#{HOMEBREW_PREFIX}/lib/docker/cli-plugins"
        ]
    EOS
  end

  test do
    assert_match "\"Version\": \"v#{version}\"", shell_output("#{bin}/docker-rollout docker-cli-plugin-metadata")
  end
end
