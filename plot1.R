setwd(file.path("C:","Users","Monillas","Desktop","Coursera",
                "Exploratory Data Analysis"))

data <- read.table("household_power_consumption.txt",
                   header=TRUE,sep=";", stringsAsFactors=FALSE)

data2 <- subset(data, Date=="1/2/2007" | Date=="2/2/2007",
                select = Date:Sub_metering_3)

png("plot1.png", width=480, height=480, units="px")

hist(as.numeric(data2$Global_active_power),
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     col="brown3")

dev.off()
