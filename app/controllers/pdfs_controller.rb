# app/controllers/pdfs_controller.rb
class PdfsController < ApplicationController
  def merge_pdfs
    pdf_paths = ['/home/dell/Downloads/sample1.pdf', '/home/dell/Downloads/sample2.pdf']
    output_path = Rails.root.join('app', 'pdfs', 'merged.pdf')
    PdfMergerService.merge_pdfs(pdf_paths, output_path)
    send_file output_path, type: 'application/pdf', disposition: 'inline'
  end
end
