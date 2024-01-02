class PdfMergerService
  def self.merge_pdfs(pdf_paths, output_path)
    pdf = CombinePDF.new

    pdf_paths.each do |path|
      pdf << CombinePDF.load(path)
    end

    pdf.save output_path
  end
end
  