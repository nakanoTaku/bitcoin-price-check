class Bitcoin < ApplicationRecord
  enum category: {  All: 0, BTC_JPY: 1, FX_BTC_JPY: 2, ETH_BTC: 3 }
end
