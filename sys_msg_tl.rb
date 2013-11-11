# -*- coding: utf-8 -*-

# Copyright 2013, pocket
# Licensed MIT
# http://opensource.org/licenses/mit-license.php

Plugin.create(:sys_msg_tl) do
  tab :sys_msg, "system messages" do
    set_icon MUI::Skin.get("icon.png")
    timeline :sys_msg
  end

  on_update do |s, msgs|
    timeline(:sys_msg) << msgs.select { |m| m.system? }
  end
end
