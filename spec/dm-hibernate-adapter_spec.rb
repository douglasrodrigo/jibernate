require File.dirname(__FILE__) + '/spec_helper'

# TODO should be:
#require 'dm-core/spec/adapter_shared_spec'
# TODO but for now there is modified AbstractAdapter spec:
require 'adapter_shared_spec'
require 'hibernate_shared_spec'

describe DataMapper::Adapters::HibernateAdapter do
  DB_CONFIGS = {
          :H2_EMB => { :adapter => "hibernate", :dialect => "H2", :username => "sa", :url => "jdbc:h2:jibernate" },
          :DERBY_EMB => { :adapter => "hibernate", :dialect => "Derby", :url => "jdbc:derby:jibernate;create=true" },
          :HSQL_EMB => { :adapter => "hibernate", :dialect => "HSQL", :username => "sa", :url => "jdbc:hsqldb:file:testdb;create=true" }
  }

  before :all do
    @adapter = DataMapper.setup(:default,DB_CONFIGS[:H2_EMB])
  end

  it_should_behave_like 'An Adapter'

  # TODO add hibernate specyfic specs
  it_should_behave_like 'An Hibernate Adapter'

end
