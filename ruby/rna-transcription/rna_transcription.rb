class Complement
  VERSION = 3

  DNA_TO_RNA = { 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U' }.freeze

  def self.of_dna(strand)
    raise ArgumentError if strand =~ /[^#{DNA_TO_RNA.keys.join}]/
    strand.chars.map { |c| DNA_TO_RNA[c] }.join
  end
end
