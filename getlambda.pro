function getlambda,header

; PURPOSE:
;    Read the FITS header from a wavelength-calibrated spectrum and
;    return an array of wavelengths corresponding to each pixel.
;
; INPUT:
;    header    FITS header array
;              (as returned by READFITS() or MRDFITS()).
;
; FUNCTIONS CALLED:
;   SXPAR()    [From the IDL Astronomy User's Library.]
;
; MODIFICATION HISTORY:
;    2015-07-23 Megan M. Kiminki -- Program created.

npixels      = sxpar(header,'NAXIS1')
start_pixel  = sxpar(header,'CRPIX1')
dispersion   = sxpar(header,'CDELT1')
start_lambda = sxpar(header,'CRVAL1')

wavelength = (dindgen(npixels) + 1 - start_pixel)*dispersion + start_lambda

return,wavelength
end
