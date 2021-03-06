require "rails_helper"

describe TodoList do
  it { is_expected.to have_many(:todos) }
  it { expect(subject).not_to allow_value("hola").for(:title) }
  it { expect(subject).not_to allow_value("hola-chau").for(:title) }
  it { expect(subject).to allow_value("hola-chau-123").for(:title) }
end
