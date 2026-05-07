// ElevenLabs フロント側設定（自分専用ソフトのため直書き）
window.HINAFT_CONFIG = {
  elevenlabs: {
    apiKey: "",
    voiceId: "hMK7c1GPJmptCzI4bQIu",
    modelId: "eleven_v3",
    languageCode: "ja",
    outputFormat: "mp3_44100_64",
    voiceSettings: {
      stability: 1.0,
      similarity_boost: 0.75,
      style: 0.0,
      use_speaker_boost: true,
    },
    // ハルシネーション対策：再生開始から固定 ms で強制停止
    audioMaxMs: 25000,
  },
  // タイプライター表示速度（文字/秒）
  typewriterCharsPerSecond: 7,
  // メッセージポーリング間隔（ミリ秒）
  pollIntervalMs: 5000,
  // 自動マイクON時、再生終了後にマイクを開くまでのガード時間（ミリ秒）
  autoMicGuardMs: 300,
};
