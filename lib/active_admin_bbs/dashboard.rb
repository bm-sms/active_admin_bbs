module ActiveAdminBbs
  module Dashboard
    def self.included(dsl)
      dsl.instance_eval do
        content title: I18n.t('active_admin_bbs.dashboard.chart.title') do
          columns do
            column do
              panel I18n.t('active_admin_bbs.dashboard.chart.user_count') do
                div do
                  span Bbs::User.count
                end
              end
            end

            column do
              panel I18n.t('active_admin_bbs.dashboard.chart.topic_count') do
                div do
                  span Bbs::Topic.count
                end
              end
            end

            column do
              panel I18n.t('active_admin_bbs.dashboard.chart.comment_count') do
                div do
                  span Bbs::Topic.count
                end
              end
            end
          end

          columns do
            column do
              panel I18n.t('active_admin_bbs.dashboard.chart.user_count_by_day') do
                line_chart ActiveAdminBbs::Dashboard::cumulate(Bbs::User.group_by_day(:created_at).count)
              end
            end
          end

          columns do
            column do
              panel I18n.t('active_admin_bbs.dashboard.chart.topic_count_by_day') do
                line_chart ActiveAdminBbs::Dashboard::cumulate(Bbs::Topic.group_by_day(:created_at).count)
              end
            end
          end

          columns do
            column do
              panel I18n.t('active_admin_bbs.dashboard.chart.comment_count_by_day') do
                line_chart ActiveAdminBbs::Dashboard::cumulate(Bbs::Comment.group_by_day(:created_at).count)
              end
            end
          end
        end
      end
    end

    private

    def cumulate(count)
      total = 0

      count.to_a.sort {|day, value| day[0] <=> value[0] }
        .map {|day, value| {day => (total += value)}}
        .reduce({}, :merge)
    end

    module_function :cumulate
  end
end
