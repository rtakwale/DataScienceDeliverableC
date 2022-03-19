// The code to reformat the data
const formatDataForDB = (dataIn, numOfAttributes, outSheetName) => {
  const countryCodes = ['CAN', 'HND', 'HTI', 'LBY', 'MEX', 'NIC', 'SYR', 'USA', 'YEM'];
  const years = [2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020];

  const attributes = ['country_code', 'yr', ...dataIn.slice(0, numOfAttributes).map(row => row[0]).flat()];

  // Fill the data
  let data = [];
  for (let i = 0; i < countryCodes.length; i++) {
    for (let j = 0; j < years.length; j++) {
      const rowNum = (i * years.length) + j;
      const attributeData = Array.from(dataIn.slice(numOfAttributes * i, (numOfAttributes * i) + numOfAttributes).map(row => row[2 + j]));
      const newData = [countryCodes[i], years[j]].concat(attributeData);
      data[rowNum] = newData;
    }
  }

  const formattedData = [attributes, ...data];

  const sheet = SpreadsheetApp.getActive().getSheetByName(outSheetName);
  sheet.getRange(1, 1, formattedData.length, numOfAttributes+2).setValues(formattedData);
}

// Run this function in Google scripts (not the other one) to reformat and set the const values based on the data
const runReformat = () => {
  const rawDataSheetName = 'Sheet1';
  const formattedDataSheetName = 'Sheet2';
  const rangeValues = 'A2:R145';
  const numOfAttributes = 16;
  
  const sheet = SpreadsheetApp.getActive().getSheetByName(rawDataSheetName);
  const dataRange = sheet.getRange(rangeValues).getValues();
  formatDataForDB(dataRange, numOfAttributes, formattedDataSheetName);
}
