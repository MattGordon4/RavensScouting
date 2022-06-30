json.extract! s_report, :id, :name, :ht, :wt, :pos, :school, :notes, :scout, :links, :created_at, :updated_at
json.url s_report_url(s_report, format: :json)
