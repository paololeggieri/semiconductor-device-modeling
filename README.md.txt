# Semiconductor Device Modeling (MATLAB)

This repository contains simple MATLAB scripts for modeling semiconductor device behavior.

## Step 1: Ideal Diode I–V (Shockley equation)
- Script: `code/diode_IV_ideal.m`
- Outputs: I–V curve (linear scale) and semilog plot

## Next steps
- Temperature sweep

- Add series resistance model

## Step 2: Temperature sweep
- Script: code/diode_IV_temperature.m
- Output: figures/diode_IV_temperature.png

## Step 3: Series resistance effect
- Script: code/diode_IV_series_resistance.m
- Output: figures/diode_IV_series_resistance.png


**Note on series resistance effect**

For the selected parameter values, the I–V curves of the ideal diode and the diode with series resistance
partially overlap at low current levels. This behavior is physically expected, since the voltage drop
across the series resistance becomes significant only at higher current densities.

To better visualize the effect of the series resistance in the plot, the parameter `Rs` can be increased
(e.g., from 5 Ω to 50 Ω or higher), which enhances the deviation from the ideal diode behavior at high voltages.
