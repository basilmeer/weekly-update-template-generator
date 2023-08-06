#!/usr/bin/env ruby

#######################
# SAMPLE PATTERN:
#######################
# 
# 📆 Weekly Update  📆
#
# 30 July (Monday) | X hours
# * ISSUE_NUM - Issue title
#   * Further details
#
# 01 August (Tuesday) | 8 hours
# * ISSUE_NUM - Issue title
#   * Further details
#
# 02 August 2023 (Wednesday) | 7 hours
# * ISSUE_NUM - Issue title
#   * Further details
#
# 03 August 2023 (Thursday) | 6 hours
# * ISSUE_NUM - Issue title
#   * Further details
#
# 04 August 2023 (Friday)
# * ISSUE_NUM - Issue title
#   * Further details
#
# Total: X hours

require 'date'

class UpdateGenerator
  def initialize(date: Date.today, offset: 1)
    @date = date
    @offset = offset # Monday: 1 for offset; for Tuesday use 2, etc.
  end

  def call
    update = <<~UPDATE
      📆 Weekly Update  📆

    UPDATE

    week_dates.each do |wd|
      text = <<~TEXT
        #{wd} | X Hours
        * Main Update
          * Any Details

      TEXT

      update.concat text
    end

    update += <<~EOF
      Total Hours: X hours
    EOF

    File.open('./sample.md', 'a+') { |f| f.write(update) }
    
    p "Generated update template from #{week_dates.first} to #{week_dates.last}"
  end
  
  def week_start
    @date - (@date.wday - @offset) % 7
  end

  def week_end
    week_start + 4
  end

  def week_dates
    ws = week_start
    we = week_end

    (ws..we).map { |date| date.strftime("%d %B (%A)") }
  end
end

UpdateGenerator.new.call
