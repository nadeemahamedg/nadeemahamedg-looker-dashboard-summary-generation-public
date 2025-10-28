project_name: "summarygenerationpublic"

application: dashboard-summarization {
  label: "Dashboard Insights Powered by Vertex AI"
  url: "extensions/dashboard_summarization/bundle.js"
  mount_points: {
    dashboard_vis: no
    dashboard_tile: yes
    standalone: no
  }
  entitlements: {
    local_storage: yes
    use_form_submit: yes
    core_api_methods: ["me","run_inline_query","run_query","all_lookml_models","dashboard","dashboard_dashboard_elements"]
    external_api_urls: [
      "https://dashboard-summary-service-ldmrnzzbwq-uc.a.run.app",
      "wss://dashboard-summary-service-ldmrnzzbwq-uc.a.run.app",
      "http://localhost:5000",
      "http://localhost:3000",
      "https://*.googleapis.com",
      "https://slack.com/api/*",
      "https://slack.com/*"
    ]
    oauth2_urls: [
      "https://accounts.google.com/o/oauth2/v2/auth",
      "https://www.googleapis.com/auth/chat.spaces",
      "https://www.googleapis.com/auth/drive.metadata.readonly",
      "https://www.googleapis.com/auth/spreadsheets.readonly",
      "https://www.googleapis.com/auth/userinfo.profile",
      "https://www.googleapis.com/auth/chat.spaces.readonly",
      "https://www.googleapis.com/auth/chat.bot",
      "https://www.googleapis.com/auth/chat.messages",
      "https://www.googleapis.com/auth/chat.messages.create",
      "https://slack.com/oauth/v2/authorize"
    ]
    scoped_user_attributes: ["genai_client_secret"]
    global_user_attributes: []
  }
}
