require 'rails_helper'

RSpec.describe Paginator do
  let(:params) do
    ActionController::Parameters.new({
      "page"=>{"number"=>"10", "size"=>"10"},
      "controller"=>"v1/athletes",
      "action"=>"index",
      "javelin_throw_id"=>"2"
    })
  end
  let(:base_url) {'http://example.com'}
  let(:path) {'/competitions/4/athletes'}

  describe '#pagination_links' do
    context 'when on page 10 and 300 total records' do
      it 'should have all pagination links' do
        my_paginator = described_class.new(params, base_url: base_url, path: path)
        pagination_links = my_paginator.pagination_links(300)
        expect(pagination_links['first']).
          to eq('http://example.com/competitions/4/athletes?javelin_throw_id=2&page%5Bnumber%5D=1&page%5Bsize%5D=10')
        expect(pagination_links['prev'])
          .to eq('http://example.com/competitions/4/athletes?javelin_throw_id=2&page%5Bnumber%5D=9&page%5Bsize%5D=10')
        expect(pagination_links['next'])
          .to eq('http://example.com/competitions/4/athletes?javelin_throw_id=2&page%5Bnumber%5D=11&page%5Bsize%5D=10')
        expect(pagination_links['last']).
          to eq('http://example.com/competitions/4/athletes?javelin_throw_id=2&page%5Bnumber%5D=30&page%5Bsize%5D=10')
      end
    end
  end
end
