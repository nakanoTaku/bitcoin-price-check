class Bitcoin < ApplicationRecord
  enum category: {  BTC_JPY: 0, FX_BTC_JPY: 1, ETH_BTC: 2 }
end
